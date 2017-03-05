desc 'Seed Data 2017'

namespace :seed do
  task clean: :environment do
    delete_all_data
  end

  task make_admin: :environment do
    make_first_user_admin
  end

  #########################################################

  def delete_all_data
    # Applic - application of conference participants
    Applic.delete_all
    KofstApplic.delete_all
    Message.delete_all
    User.delete_all
  end

  def make_first_user_admin
    first_user = User.first
    first_user.add_role :admin
  end

end
