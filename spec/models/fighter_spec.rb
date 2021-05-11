require 'rails_helper'

RSpec.describe Fighter, type: :model do
  describe "戦闘力診断" do
    it "戦闘力5:戦闘力診断ができること" do
      fighter = Fighter.new(name: "satou", combat_power: 5)
      expect(fighter.measure_power).to eq "satouさんの戦闘力は一般人です"
    end

    it "戦闘力130:戦闘力診断ができること" do
      fighter = Fighter.new(name: "satou", combat_power: 130)
      expect(fighter.measure_power).to eq "satouさんの戦闘力は亀仙人クラスです"
    end

    it "戦闘力1000:戦闘力診断ができること" do
      fighter = Fighter.new(name: "satou", combat_power: 1000)
      expect(fighter.measure_power).to eq "satouさんの戦闘力は下級サイヤ人クラスです"
    end 

    it "戦闘力5000:戦闘力診断ができること" do
      fighter = Fighter.new(name: "satou", combat_power: 5000)
      expect(fighter.measure_power).to eq "satouさんの戦闘力はエリートサイヤ人クラスです"
    end
  end
end
