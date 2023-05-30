import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!

    var tasks: [Task] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }

    @IBAction func addTaskButtonPressed(_ sender: UIButton) {
        // Create a UIAlertController to prompt the user for task details
        let alertController = UIAlertController(title: "New Task", message: nil, preferredStyle: .alert)

        alertController.addTextField { textField in
            textField.placeholder = "Title"
        }

        alertController.addTextField { textField in
            textField.placeholder = "Description"
        }

        // Create an "Add" action for the alert
        let addAction = UIAlertAction(title: "Add", style: .default) { [weak self] _ in
            guard let titleTextField = alertController.textFields?.first,
                  let descriptionTextField = alertController.textFields?.last,
                  let title = titleTextField.text,
                  let description = descriptionTextField.text else {
                return
            }

            // Create a new task object and add it to the tasks array
            let task = Task(title: title, description: description)
            self?.tasks.append(task)

            // Reload the table view to display the new task
            self?.tableView.reloadData()
        }

        alertController.addAction(addAction)

        // Create a "Cancel" action for the alert
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)

        // Present the alert controller
        present(alertController, animated: true, completion: nil)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath)
        let task = tasks[indexPath.row]
        cell.textLabel?.text = task.title
        cell.detailTextLabel?.text = task.description
        return cell
    }
}
