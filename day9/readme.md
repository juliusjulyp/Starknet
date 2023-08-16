Question: Building a blog engine with modules
You are tasked with building a basic blog engine using the Cairo programming language. The blog
engine should have functionalities to manage posts and users. Follow the steps below to implement this
blog engine.
Level 1
Create a new Cairo package named "BlogEngine" using Scarb.
Level 2
Inside the package, organize your code into appropriate modules for better maintainability:
• Create a module named "models" to define the data structures. Inside this module:
• Define a struct named User with fields for username and email.
• Define another struct named Post with fields for title, content, and author
(which is a reference to a User).
• Create a module named "database" to simulate a basic database interaction. Inside this
module:
• Implement a function named create_user that takes username and email and
returns a new User instance.
• Implement a function named create_post that takes title, content, and author,
and returns a new Post instance.
• Create a module named "utils" to handle common operations. Inside this module:• Implement a function named display_post that takes a Post instance and
prints its details.
Level 3
In the "main.cairo" file, import the necessary modules and perform the following operations:
• Create a user using the create_user function from the "database" module.
• Create a post using the create_post function and associate it with the user you created.
• Display the details of the created post using the display_post function from the
"utils" module.
Your final code should demonstrate the use of modules, struct definitions, data creation, and function
calls to build a simple blog engine.
Remember to structure your code in a way that promotes modularity and code organization.
Feel free to add comments to explain the purpose of each module and function for better code
understanding.
Provide the complete code for the "models," "database," "utils," and "main" modules in the
"BlogEngine" package