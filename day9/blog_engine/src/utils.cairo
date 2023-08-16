use debug::PrintTrait;
use blog_engine::models::Post;

impl PostImpl of PrintTrait<Post>{
fn print(self: Post){
self.title.print();
self.content.print();
self.author.username.print();
self.author.email.print();
}
}

fn display_post(post: Post){
post.print();
}
