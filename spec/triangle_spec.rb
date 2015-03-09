require File.expand_path(File.dirname(__FILE__) + '/../triangle')

describe Triangle do
  specify { expect(Triangle.check_triangle(2,3,6)).to eq "三角形じゃないです＞＜" }
  specify { expect(Triangle.check_triangle(2,3,5.1)).to eq "三角形じゃないです＞＜" }
  specify { expect(Triangle.check_triangle(2,3,5)).to eq "三角形じゃないです＞＜" }
  specify { expect(Triangle.check_triangle(2,3,4.9)).to eq "不等辺三角形ですね！" }

  specify { expect(Triangle.check_triangle(2,3,4)).to eq "不等辺三角形ですね！" }
  specify { expect(Triangle.check_triangle(2,3,3.1)).to eq "不等辺三角形ですね！" }
  specify { expect(Triangle.check_triangle(2,3,3)).to eq "二等辺三角形ですね！" }
  specify { expect(Triangle.check_triangle(2,3,2.9)).to eq "不等辺三角形ですね！" }

  specify { expect(Triangle.check_triangle(3,3,4)).to eq "二等辺三角形ですね！" }
  specify { expect(Triangle.check_triangle(3,3,3.1)).to eq "二等辺三角形ですね！" }
  specify { expect(Triangle.check_triangle(3,3,3)).to eq "正三角形ですね！" }
  specify { expect(Triangle.check_triangle(3,3,2.9)).to eq "二等辺三角形ですね！" }

  specify { expect(Triangle.error?([0,1])).to eq true }
  specify { expect(Triangle.error?([0,1,2])).to eq false }
  specify { expect(Triangle.error?([0,1,2,3])).to eq true }

end