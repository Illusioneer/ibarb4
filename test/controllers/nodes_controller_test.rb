require 'test_helper'

class NodesControllerTest < ActionController::TestCase
  setup do
    @node = nodes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nodes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create node" do
    assert_difference('Node.count') do
      post :create, node: { authors_id: @node.authors_id, content: @node.content, created_at: @node.created_at, current_version_id: @node.current_version_id, first_published: @node.first_published, language: @node.language, last_published: @node.last_published, metadata: @node.metadata, node_id: @node.node_id, rank: @node.rank, status: @node.status, title: @node.title, unpublished_at: @node.unpublished_at, updated_at: @node.updated_at, version_id: @node.version_id }
    end

    assert_redirected_to node_path(assigns(:node))
  end

  test "should show node" do
    get :show, id: @node
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @node
    assert_response :success
  end

  test "should update node" do
    patch :update, id: @node, node: { authors_id: @node.authors_id, content: @node.content, created_at: @node.created_at, current_version_id: @node.current_version_id, first_published: @node.first_published, language: @node.language, last_published: @node.last_published, metadata: @node.metadata, node_id: @node.node_id, rank: @node.rank, status: @node.status, title: @node.title, unpublished_at: @node.unpublished_at, updated_at: @node.updated_at, version_id: @node.version_id }
    assert_redirected_to node_path(assigns(:node))
  end

  test "should destroy node" do
    assert_difference('Node.count', -1) do
      delete :destroy, id: @node
    end

    assert_redirected_to nodes_path
  end
end
