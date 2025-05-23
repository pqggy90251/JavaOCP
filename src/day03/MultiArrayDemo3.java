package day03;

public class MultiArrayDemo3 {

	public static void main(String[] args) {

//		double[][] values= {{170.0,182.5,165.0},{60.5,72.5,45.0}};
//		System.out.println(values[1][0]/Math.pow(values[0][0]/100, 2));
//		System.out.println(values[1][1]/Math.pow(values[0][1]/100, 2));
//		System.out.println(values[1][2]/Math.pow(values[0][2]/100, 2));

		// values 內含身高與體重的資訊
		double[][] values = { { 170.0, 60.5 }, { 182.5, 72.5 }, { 165.0, 45.0 }, { 175.0, 75.0 } };
		// 請計算這三組 bmi 各為多少 ?
		for (int i = 0; i < values.length; i++) {
			double h = values[i][0];
			double w = values[i][1];
			double bmi = w / Math.pow(h / 100, 2);
			String result = (bmi > 23) ? "過重" : (bmi <= 18) ? "過輕" : "正常";
			System.out.printf("身高: %.1f 體重: %.1f BMI: %.2f %s%n", h, w, bmi, result);
		}
	}

}
