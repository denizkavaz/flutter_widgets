
// shrinkwrap for take height in a column
// NeverScrollableScrollPhysics() to take height according to count of list items, so it dosen't need to be scrolled

return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: taskViewModel.tasks.length,
            itemBuilder: (context, index) {
              final task = taskViewModel.tasks[index];
              return Container(
                height: 40,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: primaryColor500,
                ),
                child: ListTile(
                  title: Text(task.description),
                  subtitle: Text('${task.date}'),
                  trailing: task.done ? const Icon(Icons.check, color: Colors.green) : null,
                ),
              );
            },
          );
