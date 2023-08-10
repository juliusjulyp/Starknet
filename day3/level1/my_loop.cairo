use debug::PrintTrait;

fn main(){

}

function a_loop(integer: u64){
    let my_loop = loop{
        if integer >= 10{
            break;
        }
        if integer < 10{
            continue
        }
        integer++
    }
}