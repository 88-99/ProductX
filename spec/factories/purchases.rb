FactoryBot.define do
  factory :purchase do
    date_at {'2022.02.02'}
    inputter { 1 }
    user
    team
    supplier
    
    after(:create) do |purchase|
      create :purchase_detail, purchase: purchase
    end
  end

  # factory :second_task, class: Task do
  #   title {'Factoryで作ったデフォルトのタイトル２'}
  #   content {'Factoryで作ったデフォルトのコンテント２'}
  #   deadline {'20211010'}
  #   created_at {'20231010'}
  #   status { 1 }
  #   priority { 1 }

  #   after(:create) do |task|
  #     create_list(:labelling, 1, id: 2, task: task, label: create(:label))
  #   end
  # end

  # factory :third_task, class: Task do
  #   title {'Factoryで作ったデフォルトのタイトル3'}
  #   content {'Factoryで作ったデフォルトのコンテント3'}
  #   deadline {'20231010'}
  #   created_at {'20221010'}
  #   status { 2 }
  #   priority { 0 }
  #   after(:create) do |task|
  #     create_list(:labelling, 1, id: 3, task: task, label: create(:label))
  #   end
  # end
end