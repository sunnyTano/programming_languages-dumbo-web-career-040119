require 'pry'
def languages
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}
end

def reformat_languages(languages)
hash = {}
# binding.pry
  languages.each do |of, lang|
    lang.each do |name, type|
      # puts "#{type}"
      # binding.pry
      hash[name] = type
        hash[name][:style] = []
            # binding.pry
          hash[name][:style] << of
          if name == :javascript
          hash[name][:style] << :oo
        end 
      end 
    end
  hash
end 

reformat_languages(languages)
