require 'rails_helper'

RSpec.describe Fighter, type: :model do
  describe "戦闘力診断" do
    let(:params){{name: "satou"}}
    it "戦闘力5:戦闘力診断ができること" do
      params.merge!(combat_power: 5)
      fighter = Fighter.new(params)
      expect(fighter.measure_power).to eq "satouさんの戦闘力は一般人です"
    end

    it "戦闘力130:戦闘力診断ができること" do
      params.merge!(combat_power: 130)
      fighter = Fighter.new(params)
      expect(fighter.measure_power).to eq "satouさんの戦闘力は亀仙人クラスです"
    end

    it "戦闘力1000:戦闘力診断ができること" do
      params.merge!(combat_power: 1000)
      fighter = Fighter.new(params)
      expect(fighter.measure_power).to eq "satouさんの戦闘力は下級サイヤ人クラスです"
    end 

    it "戦闘力5000:戦闘力診断ができること" do
      params.merge!(combat_power: 5000)
      fighter = Fighter.new(params)
      expect(fighter.measure_power).to eq "satouさんの戦闘力はエリートサイヤ人クラスです"
    end
  end
end
