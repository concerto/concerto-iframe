class Iframe < Content
  DISPLAY_NAME = "IFrame"

  after_initialize :set_kind, :create_config, :load_info

  after_find :load_config
  before_validation :save_config

  validate :url_must_exist

  attr_accessor :config

  # Automatically set the kind for the content
  # if it is new.  We use this hidden type that no fields
  # render so Dynamic Content meta content never gets displayed.
  def set_kind
    return unless new_record?
    self.kind = Kind.where(:name => 'Graphics').first
  end

  # Create a new configuration hash if one does not already exist.
  # Called during `after_initialize`, where a config may or may not exist.
  def create_config
    self.config = {} if !self.config
  end

  # Load a configuration hash.
  # Converts the JSON data stored for the content into the configuration.
  # Called during `after_find`.
  def load_config
    self.config = JSON.load(self.data)
  end

  def load_info
  end

  # Prepare the configuration to be saved.
  # Compress the config hash back into JSON to be stored in the database.
  # Called during `before_valication`.
  def save_config
    self.data = JSON.dump(self.config)
  end

  def self.form_attributes
    attributes = super()
    # what about  :thumb_url, :title, :description
    attributes.concat([:config => [:url]])
  end

  def url_must_exist
    if config['url'].empty?
      errors.add(:url, 'Url must be specified')
    end
  end

  def render_details
    {:path => self.config['url']}
  end
end
