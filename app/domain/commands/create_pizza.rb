module Commands
  class CreatePizza
    def initialize(repo: Repositories::Pizza)
      @repo = repo
    end

    def run pizza:
      @pizza = pizza
      truncate_name
      persist
    end

    private

    def truncate_name
      return unless @pizza[:name]
      @pizza[:name] = @pizza[:name][0..24]
    end

    def persist
      @repo.create!(@pizza)
    end
  end
end
