

 use blog_engine::models::{Post,User};
// use models::Post;
use blog_engine::database::create_user;
use blog_engine::database::create_post;
use blog_engine::utils::display_post;

fn main(){

let new_user = create_user('julius', 'julius@july');
let post = create_post(title:'audits', content: 'cairo lookout', author:new_user);

display_post(post);



}