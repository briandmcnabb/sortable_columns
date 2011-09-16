require File.expand_path('../spec_helper', File.dirname(__FILE__))

shared_examples_for 'default' do
  its('last.name') { should == 'John A Doe' }
end

describe SortableColumns::ActiveRecordExtension do
  before :all do
    (1..50).each { Factory(:user) }
  end
  
  describe '#sortable' do
    context 'sortable without any argument (defaults)' do
      subject { User.sortable }
      it_should_behave_like 'default'
    end
    
    context 'sort with only column argument passed' do
      subject { User.sortable('years_till_retirement') }
      its('first.name') { should == 'John A Doe' }
    end
    
    context 'sort with both arguments passed' do
      subject { User.sortable('years_till_retirement', 'asc') }
      its('last.name') { should == 'John A Doe' }
    end
    
    context 'sort with invalid arguments passed' do
      subject { User.sortable('invalid_column', 'invalid_direction') }
      it_should_behave_like 'default'
    end
  end 
  
end