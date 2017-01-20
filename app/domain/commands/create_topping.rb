module Commands
  class CreateTopping
    def initialize(repo: Repositories::Topping)
      @repo = repo
    end

    def run(topping:)
      @topping = topping
      truncate_name
      persist
    end

    private

    def truncate_name
      return unless @topping[:name]
      @topping[:name] = @topping[:name][0..24]
    end

    def persist
      @repo.create!(@topping)
    end
  end
end
