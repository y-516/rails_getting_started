class ContactsController < ApplicationController
  before_action :set_contact, only:[:edit,:update,:destroy]
  
  def index
    @contact = Contact.all.order(created_at: :desc)
  end
  
  def edit
  end
  
  def update
    if @contact.update(contact_params)
      redirect_to contacts_path
    else
      render 'edit'
    end
  end
  
  def destroy
    @contact.destroy
    redirect_to contacts_path
  end
  
  def new
    @contact = Contact.new
  end
  
  def create
     @contact =Contact.new(contact_params)
      if @contact.save
        redirect_to new_contact_path
      else
        render 'new'
      end
  end
  
  def confirm
    @contact = Contact.new(contact_params)
  end
  
  private
    
    def contact_params
      params.require(:contact).permit(:name,:email,:content)
    end
    
    def set_contact
      @contact = Contact.find(params[:id])
    end
  
end
