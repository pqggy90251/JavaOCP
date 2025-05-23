package day12;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Optional;
import java.util.OptionalInt;
import java.util.stream.Stream;

public class StreamDemo1 {

	public static void main(String[] args) {
		int[] scores= {45,55,-76,-88,-90,50,10};
		//找出一筆及格的分數
//		int passScore= Arrays.stream(scores)
//							//.parallel()
//							.filter(score->score>=60) 
//							.findAny()
//							.getAsInt();
//		System.out.println(passScore);
		
		
		OptionalInt optInt= Arrays.stream(scores)
		.filter(score->score>=60) 
		.findAny();
		
		if(optInt.isPresent()) {
			System.out.println(optInt.getAsInt());
		}else {
			System.out.println("查無此資料");
		}
		
		
	}

}
