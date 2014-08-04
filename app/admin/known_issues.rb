ActiveAdmin.register KnownIssues do

  permit_params :name, :machine, :comment, :shellmesg, :solution

  config.per_page = 25

  index do 
    column  :name
    column  :machine
    column  :shellmesg
    column  :comment
    column  :solution
    # Add date updated here. 
    column  :updated_at
    actions
  end
  
  actions :all, :except => :destroy

  filter  :name, as: :select
  filter  :machine, as: :select
  filter  :comment, as: :string 

  form do |f|
    f.inputs 'Known Issues' do
      f.input :name
      f.input :machine, :as => :select, :collection =>["Flame04", "Flame05", "Flame06", "Flare04", "Flare06", "Flare07", "Smoke", "Flame Assist"]
      f.input :shellmesg, label: "Shell Message"
      f.input :comment
      f.input :solution
      end
    f.actions
  end

  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
