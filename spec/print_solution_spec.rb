# spec/print_solution_spec.rb

require_relative './../lib/print_solution'

describe PrintSolution do
  describe "#merge_array()" do
    let(:scenario_intersecting) {PrintSolution.merge_array(arrays_intersecting)}
    let(:arrays_intersecting) {[[1,5], [2,6]]}
    let(:scenario_not_intersecting) {PrintSolution.merge_array(arrays_not_intersecting)}
    let(:arrays_not_intersecting) {[[1,5], [6,8]]}
    let(:scenario_multiple) {PrintSolution.merge_array(multiple_arrays)}
    let(:multiple_arrays) {[[1,3], [4,5], [6,7]]}
    let(:scenario_multiple_intersecting) {PrintSolution.merge_array(multiple_arrays_intersecting)}
    let(:multiple_arrays_intersecting) {[[1,5], [2,6], [8,9]]}
    let(:scenario_with_ranges) {PrintSolution.merge_array(multiple_arrays_with_ranges)}
    let(:multiple_arrays_with_ranges) {[[1,5], [2,2], [2,3], [7,10]]}
    it "merges when arrays intersect" do
      expect(scenario_intersecting).to eql([1,6])
    end
    it "returns arrays when do not intersect" do
      expect(scenario_not_intersecting).to eql([[1,5], [6,8]])
    end
    it "both merges when arrays intersect and returns when do not intersect" do
      expect(scenario_multiple).to eql([[1,3], [4,5], [6,7]])
    end
    it "does nothing when no intersection" do
      expect(scenario_multiple_intersecting).to eql([[1,6], [8,9]])
    end
    it "merges ranges in the middle of minmax" do
      expect(scenario_with_ranges).to eql([[1,5], [7,10]])
    end
  end
end
