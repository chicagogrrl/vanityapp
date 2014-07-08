require 'spec_helper'

describe VanityController do

  def set_basic_auth(user, pass)
    @request.env["HTTP_AUTHORIZATION"] = "Basic " + Base64::encode64("#{user}:#{pass}")
  end

  describe "get to INDEX" do
    it "should require authentication" do
      get :index
      response.code.should eq '401'
    end

    context 'and we log in' do
      before(:each) do
        yaml_text = <<-EOF
          username: ABC
          password: my_alias
        EOF
        @yaml = YAML.load(yaml_text)
        filepath = "bogus_filename.yml"
        YAML.stub(:load).and_return(@yaml)
      end

      it "should allow basic authentication" do

        set_basic_auth(@yaml["username"], @yaml["password"])
        get :index

        response.code.should eq '200'
      end
    end

  end

end
