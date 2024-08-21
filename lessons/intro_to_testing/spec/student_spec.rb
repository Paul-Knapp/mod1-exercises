# Add the 2 requires you will need here
require './lib/student'
require 'rspec'

describe Student do #the class should be the same name as the class being tested
  #before(:each) do
    # @student = Student.new('Penelope') this line would eliminate the nead for this block repeatedly running
  describe '#initialize' do #the name of the method being tested
    it 'is an instance of student' do # describing what the method should do/return
      student = Student.new('Penelope')

      expect(student).to be_a Student # this is an assertion
    end
    # test it has a name
    it 'is givin a name' do
      penelope = Student.new("Penelope")
      megan = Student.new("Megan")

      expect(penelope.name).to eq("Penelope")
      expect(megan.name).to eq("Megan")
    end

    # test it has cookies
    it 'has an empty array of cookies' do
      student = Student.new('Penelope')

      expect(student.cookies).to eq([])
    end
  end
    # test it can add cookies
    describe "add_cookie" do
      it "adds a cookie to our cookies lis" do
        student = Student.new('Penelope')
        student.add_cookie("chocolate chunk")
        student.add_cookie('snickerdoodle')
        expect(student.cookies).to eq(['chocolate chunk', 'snickerdoodle'])

      end
  end
end
