class Veterinario < ApplicationRecord
   has_many :Paciente

end

class Paciente < ApplicationRecord
    belong_to :Veterinario
 
end


