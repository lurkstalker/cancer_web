class HomePagesController < ApplicationController
  def home
    connect = Mysql2::Client.new(:host => "localhost", :username => "root", :password => "862486248624",
                                 :database => "summerDemo")
    @data =connect.query("SELECT * FROM oncokb")
  end

  def help
  end
end
