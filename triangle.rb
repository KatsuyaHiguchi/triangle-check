class Triangle

	def self.check_triangle(num1,num2,num3)

		message = "三角形じゃないです＞＜"

		# 3角形である
		if num1 + num2 > num3 && num2 + num3 > num1 && num3 + num1 > num2

			if num1 == num2 && num2 == num3

				message = "正三角形ですね！"
			
			elsif num1 != num2 && num2 != num3 && num1 != num3

				message = "不等辺三角形ですね！"
			
			else
				
				message = "二等辺三角形ですね！"

			end

		end

		message
	end

	def self.error?(param_array)

		isError = false

		# 入力数不足
		if param_array.length < 3

			isError = true
			puts "入力が不足しています。辺の長さはカンマ区切りで3つ入力してください。"

		# 入力数過多
		elsif param_array.length > 3

			isError = true
			puts "入力が多すぎます。辺の長さはカンマ区切りで3つ入力してください。"

		end

		isError

	end

	def self.run

		if !error?(ARGV)
			
			puts check_triangle(
				ARGV[0].to_f,
				ARGV[1].to_f,
				ARGV[2].to_f
				)

		end
	end
end

Triangle.run