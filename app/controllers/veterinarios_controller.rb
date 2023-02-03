class VeterinariosController < ApplicationControlle 
    def index 
      @veterinarios = veterinario.all     
    end
    
    def show 
      @veterinario = veterinario.find(params[:id])  
    end

    def new
      @veterinario = veterinario.new 
    end

    def edit
      @veterinario = veterinario.find(params[:id]) 
    end

    def create 
      @veterinario = veterinario.new(veterinario_params[:id])
      if @veterinario.save
        redirect_to @veterinario, notice: 'Veterinario criado com sucesso.'
        
      else

        render :new
      end  
        
    end  
        
    
    private 
      def veterinario_params
        params.require(:veterinario).permit(:nome, :cmrv, :especialidades)
      end
    
end