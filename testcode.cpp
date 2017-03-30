class A{
	int x;
	int get(int y){
		return x + y;
	}
}
int global;
void work(int x){
}
int main(){
	A a;
	a.x = 234;
	int num = a.get(123);
	work(global);
	println(toString(a.x));
	int[][][] arr;
	int arr_size = arr.size();
	print(toString(arr_size));
}