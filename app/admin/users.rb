ActiveAdmin.register User do
  permit_params :name, :email, :creation_date

  index do
    selectable_column
    column :id
    column :name
    column :email
    column :creation_date
    actions
  end

  form do |f|
    inputs 'Campos' do
      input :name
      input :email
      input :creation_date, start_year: 1900, end_year: 2050
    end
    submit
  end

end
