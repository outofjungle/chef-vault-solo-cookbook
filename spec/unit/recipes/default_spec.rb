require_relative '../spec_helper'

describe 'chef-vault-solo-cookbook::default' do
  let(:secrets) do
    {
      'star_wars' => "Vader is Luke's dad",
      'fight_club' => "Tyler Durden isn't real",
      'soylent_green' => "Soylent Green is people!"
    }
  end

  context 'in solo mode' do
    let (:chef_run) do
      ChefSpec::Runner.new.converge(described_recipe)
    end

    before :each do
      ChefVault::Item.stub(:solo?).and_return(true)
    end

    it 'recipe converges without errors' do
      Chef::DataBagItem.should_receive(:load)
        .with('vagrant', 'secrets')
        .exactly(1).times
        .and_return(secrets)
      expect(chef_run).to be_true
    end
  end

  context 'in non-solo mode' do
    let (:chef_run) do
      ChefSpec::Runner.new.converge(described_recipe)
    end

    before :each do
      ChefVault::Item.stub(:solo?).and_return(false)
    end

    it 'recipe converges without errors' do
      ChefVault::Item.should_receive(:load_vault)
        .with('vagrant', 'secrets')
        .exactly(1).times
        .and_return(secrets)
      expect(chef_run).to be_true
    end
  end
end
