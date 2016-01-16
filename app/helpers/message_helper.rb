module MessageHelper
  def bootstrap_flash_message(options = {})
    flash_messages = []
    flash.each do |type, message|
      # Skip empty messages, e.g. for devise messages set to nothing in a locale file.
      next if message.blank?

      Array(message).each do |msg|
        flash_messages << msg
      end
    end
    flash_messages.join("\n").html_safe
  end
end
