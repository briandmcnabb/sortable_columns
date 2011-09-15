require File.expand_path('../spec_helper', File.dirname(__FILE__))

shared_examples_for 'default' do
  it { should have(50).users }
  its('last.name') { should == 'John A Doe' }
end

describe SortableColumns::ActiveRecordExtension do
  before :all do
    (1..50).each { Factory(:user) }
  end
  
  describe '#sortable' do
    context 'sortable without an argument (defaults)' do
      subject { User.sortable }
      it { should have(50).users }
      it_should_behave_like 'default'
    end
    
    context 'sort with only column argument passed' do
      subject { User.sortable('years_till_retirement') }
      it { should have(50).users }
      its('first.name') { should == 'John A Doe' }
    end
    
    context 'sort with both arguments passed' do
      subject { User.sortable('years_till_retirement', 'asc') }
      it { should have(50).users }
      its('last.name') { should == 'John A Doe' }
    end
    
    context 'sort with invalid arguments passed' do
      subject { User.sortable('invalid_column', 'invalid_direction') }
      it { should have(50).users }
      it_should_behave_like 'default'
    end
  end 
  
end