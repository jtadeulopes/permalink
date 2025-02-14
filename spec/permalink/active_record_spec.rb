require "spec_helper"

describe Permalink::Orm::ActiveRecord do
  let(:model) { Post }
  it_should_behave_like "orm"

  it "should override to_param method" do
    model.permalink :title

    record = model.create(:title => "Some nice post")
    record.to_param.should == "#{record.id}-some-nice-post"
  end
end
