class Fighter < ApplicationRecord
  def measure_power
    if combat_power > 10000
      "#{name}さんの戦闘力は測定不能です"
    elsif combat_power > 1500
      "#{name}さんの戦闘力はエリートサイヤ人クラスです"
    elsif combat_power > 200
      "#{name}さんの戦闘力は下級サイヤ人クラスです"
    elsif combat_power > 100
      "#{name}さんの戦闘力は亀仙人クラスです"
    elsif combat_power > 0
      "#{name}さんの戦闘力は一般人です"
    else
      "不正な値です"
    end
  end
end
