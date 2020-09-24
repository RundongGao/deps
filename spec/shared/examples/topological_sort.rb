# frozen_string_literal: true

RSpec.shared_examples 'sort dependency in top-down manner' do |fixture_file|
  it 'lists all dependences that no depends_by will appear before bepends on' do
    dependency_fixture(fixture_file).each do |dependency|
      expect(depends.sort.find_index(dependency['depends_by'])).to be > depends.sort.find_index(dependency['depends_on'])
    end
  end
end