class AnsiblePlaybookController < ApplicationController
  before_action :check_privileges
  before_action :get_session_data

  after_action :cleanup_action
  after_action :set_session_data

  include Mixins::GenericListMixin
  include Mixins::GenericSessionMixin
  include Mixins::GenericShowMixin

  menu_section :ansible_playbooks
  toolbar :ansible_playbook

  def self.model
    ManageIQ::Providers::EmbeddedAnsible::AutomationManager::Playbook
  end

  private

  def textual_group_list
    [%i(properties relationships)]
  end
  helper_method :textual_group_list
end
