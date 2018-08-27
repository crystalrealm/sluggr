# TODO: Write documentation for `Sluggr`
module Sluggr
  VERSION = "0.1.0"

  def self.slugify(str, *opts)
    options = {
      "separator" => "-",
      "prefix"    => "",
      "suffix"    => "",
    }

    if !opts.empty?
      options = options.merge(opts.at(0))
    end

    separator = options.fetch "separator"
    prefix = options.fetch "prefix"
    suffix = options.fetch "suffix"

    str.downcase
      .gsub(/[^a-zA-Z ]/, "")
      .gsub(" ", separator)
      .gsub(separator * 2, separator)
      .rchop(separator)
  end
end
