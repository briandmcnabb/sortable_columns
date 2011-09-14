require File.expand_path('../spec_helper', File.dirname(__FILE__))

describe SortableColumns::ActiveRecordExtension do
  before :all do
    (1..50).each { Factory(:user) }
  end
  
  describe '#sortable' do
    context 'sortable without an argument (defaults)' do
      subject { User.sortable }
      it { should have(50).users }
      its('last.name') { should == 'John A Doe' }
    end
    
  end 
  
end