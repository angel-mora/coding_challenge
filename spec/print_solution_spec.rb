# spec/print_solution_spec.rb

require_relative './../lib/print_solution'

describe PrintSolution do
  describe "#merge_array()" do
    let(:arrays_intersecting) {[[1,5], [2,6]]}
    let(:arrays_not_intersecting) {[[1,5], [6,8]]}
    let(:multiple_arrays) {[[1,3], [4,5], [6,7]]}
    let(:multiple_arrays_intersecting) {[[1,5], [2,6], [8,9]]}
    let(:multiple_arrays_with_ranges) {[[1,5], [2,2], [2,3], [7,10]]}
    it "merges when arrays intersect" do
      solution = PrintSolution.new
      expect(solution(arrays_intersecting)).to eql([1,6])
    end
    it "returns arrays when do not intersect" do
      solution = PrintSolution.new
      expect(solution(arrays_not_intersecting)).to eql([[1,5], [6,8]])
    end
    it "both merges when arrays intersect and returns when do not intersect" do
      solution = PrintSolution.new
      expect(solution(multiple_arrays)).to eql([[1,3], [4,5], [6,7]])
    end
    it "does nothing when no intersection" do
      solution = PrintSolution.new
      expect(solution(multiple_arrays_intersecting)).to eql([[1,6], [8,9]])
    end
    it "merges ranges in the middle of minmax" do
      solution = PrintSolution.new
      expect(solution(multiple_arrays_with_ranges)).to eql([[1,5], [7,10]])
    end
  end
end
