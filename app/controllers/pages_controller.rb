class PagesController < ApplicationController

	def home
	end

	def problems

	end

	def metodo
		
	end

	def acerca
		
	end

	def programa_intensivo
		
	end

	def programa_multidisciplinar
		
	end

	def programa_fastclass
		
	end

	def faq
		
	end

	def acompañamiento_tareas
		
	end

	def precio
		
	end

	def download_pdf
  	send_file(
    "#{Rails.root}/public/BROCHURE_EULEARN.pdf",
    filename: "Brochure Eulearn.pdf",
    type: "application/pdf"
  		)
	end

end