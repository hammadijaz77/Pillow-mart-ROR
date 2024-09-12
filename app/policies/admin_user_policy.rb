class AdminUserPolicy < ApplicationPolicy
    attr_reader :current_admin_user, :record
  
    def initialize(current_admin_user, record)
      @current_admin_user = current_admin_user
      @record = record
    end
  
    # Check if the current admin can edit user information
    def view_product?
      if current_admin_user.nil?
          Rails.logger.debug "No current_admin_user found!111111111"
        else
          Rails.logger.debug "current_admin_user111111: #{current_admin_user.inspect}"
          current_admin_user.permissions.include?('view_product')
        end
    end
  
    # Check if the current admin can delete user information
    def edit_product?
      if current_admin_user.nil?
          Rails.logger.debug "No current_admin_user found!2222222222"
        else
          Rails.logger.debug "current_admin_user222: #{current_admin_user.inspect}"
          current_admin_user.permissions.include?('edit_product')
        end
    end
  
    # Check if the current admin can delete user queries
    def delete_product?
      if current_admin_user.nil?
          Rails.logger.debug "No current_admin_user found!3333333333"
        else
          Rails.logger.debug "current_admin_user333: #{current_admin_user.inspect}"
          if current_admin_user.permissions.include?('delete_product')
              true
            else
              false
            end
        end
    end
  end
  