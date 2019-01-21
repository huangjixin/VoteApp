package com.zhiye.bhmall;
 
import java.util.Scanner;
 
public class Demo1 {
 
	//树的遍历
	public static void main(String[] args) {
		Tree t1 = new Tree(1,null,null);
		Tree t2 = new Tree(2, t1, null);
		Tree t3 = new Tree(3, null, t1);
		Tree t4 = new Tree(4, t2, null);
		Tree t5 = new Tree(5, null, t2);
		Tree t8 = new Tree(8, t5, null);
		Tree t6 = new Tree(6, t3, null);
		Tree t7 = new Tree(7, null, t3);
		Tree t9 = new Tree(9, null, t6);
		Demo1.PretraverseR(t1);
//		Tree t3 = new Tree(3, null, null);
//		Tree t4 = new Tree(4, t2, t3);
//		
//		Tree t5 = new Tree(5, null, null);
//		Tree t6 = new Tree(0, t4, t5);
//		System.out.println("前序遍历结果(递归实现):");
//		Demo1.PretraverseR(t6);
//		System.out.println();
//		System.out.println("中序遍历结果:");
//		Demo1.IntraverserR(t6);
//		System.out.println();
//		System.out.println("后序遍历结果:");
//		Demo1.PostraverserR(t6);
	}
	//前序遍历:042135(根，左，右)递归实现
	public static void PretraverseR(Tree h){
		if(h==null)return;
		h.visit();
		PretraverseR(h.left);
		PretraverseR(h.right);
	}
	//中序遍历:124305(左，根，右)
	public static void IntraverserR(Tree h){
		if(h==null)return;
		IntraverserR(h.left);
		h.visit();
		IntraverserR(h.right);
	}
	//后序遍历
	public static void PostraverserR(Tree h){
		if(h==null)return;
		PostraverserR(h.left);
		PostraverserR(h.right);
		h.visit();
	}
	public static class Tree{
		int val;
		Tree left;
		Tree right;
		public Tree(int val,Tree left,Tree right){
			this.val = val;
			this.left = left;
			this.right = right;
		}
		public Tree(){}
		public void visit(){
			System.out.print(val+" ");
		}
	}
}
