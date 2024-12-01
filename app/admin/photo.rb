ActiveAdmin.register Photo do
  permit_params :collection_id, :image, :title
end
