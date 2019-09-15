ActiveAdmin.register Page do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :title,
                paragraphs_attributes: [:id, :content, :_destroy],
                certifications_attributes: [:id, :name, :certificate_issuer, :year_issued, :_destroy]

  form do |f|
    f.inputs do
      f.input :title
    end
    f.inputs 'Body' do
      f.has_many :paragraphs, allow_destroy: true do |p|
        p.input :content
      end
      f.has_many :certifications, allow_destroy: true do |c|
        c.input :name
        c.input :certificate_issuer
        c.input :year_issued
      end
    end
    f.actions
  end

end
