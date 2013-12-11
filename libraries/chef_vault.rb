require 'chef-vault'

class ChefVault
  class Item < Chef::DataBagItem
    self.singleton_class.send(:alias_method, :load_vault, :load)

    def self.load(vault, name)
      if (Chef::Config[:solo])
        Chef::DataBagItem.load(vault, name)
      else
        ChefVault::Item.load_vault(vault, name)
      end
    end
  end
end