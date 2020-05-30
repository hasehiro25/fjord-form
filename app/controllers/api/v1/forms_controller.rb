# frozen_string_literal: true

class Api::V1::FormsController < ApplicationController
  skip_before_action :require_login
  protect_from_forgery

  def show
  end

  def create
    @form = Form.find_by!(endpoint_id: params[:id])
    raise "unauthorized domain" if unauthorized_domain?
    data = request.request_parameters.to_h
    # @form.contacts.create(body: data)
    InquiryMailer.with(form: @form, user: @form.user, data: data).inquiry_info.deliver_now
    redirect_to @form.redirect_url
  end

  private
    def unauthorized_domain?
      !authorized_domain?
    end

    def authorized_domain?
      domain = request.headers[:HTTP_ORIGIN].gsub(/(http|https):\/\//, "")
      domain == @form.domain
    end
end