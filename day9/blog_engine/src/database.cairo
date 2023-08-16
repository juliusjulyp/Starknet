use blog_engine::models::{Post, User};


fn create_user(username: felt252, email: felt252) -> User{
User{username, email,}
}

fn create_post(title: felt252, content:felt252, author:User) -> Post{
Post{title, content, author,}
}