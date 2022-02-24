FactoryBot.define do
  factory :purchase_detail do
    quantity {'100'}
    purchase
    product
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