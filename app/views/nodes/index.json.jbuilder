json.array!(@nodes) do |node|
  json.extract! node, :node_id, :version_id, :current_version_id, :language, :title, :authors_id, :status, :created_at, :updated_at, :unpublished_at, :first_published, :last_published, :rank, :metadata, :content
  json.url node_url(node, format: :json)
end