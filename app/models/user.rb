class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    	validates :cedula,   :presence => {:message => ' no es valido el # de cedula!'},
                     :numericality => { only_integer: true },
                     :length => { :minimum => 6, :maximum => 10 }
                     
		  validates :celular, :presence => {:message => ' no es valido el # de celular!'},
                     :numericality => { only_integer: true },
                     :length => { :minimum => 7, :maximum => 10 }
		  validates :nombres, presence: true
		  validates :apellidos, presence: true
  	  validates :tipo_documento, presence: true
      validates :ciudad, presence: true

      
    
    
end
