require 'net/ldap'

module LdapService

  def self.fetch_info(username)
    info = {}
    ldap = Net::LDAP.new
    ldap.host = Rails.application.credentials.ldap[:host]
    auth_user = ["cn=#{Rails.application.credentials.ldap[:user]}", Rails.application.credentials.ldap[:authbase]].join(',')
    ldap.auth auth_user, Rails.application.credentials.ldap[:password]
    if ldap.bind
      filter = Net::LDAP::Filter.eq('cn', username)
      attrs = %w[mail sn memberof]
      treebase = Rails.application.credentials.ldap[:treebase]
      ldap.search(base: treebase, filter: filter, attributes: attrs) do |entry|
        info[:email] = entry.mail[0]
        info[:name] = entry.sn[0]
      end
    else
      Rails.logger.warn "LDAP Bind Failed : #{ldap.get_operation_result}"
    end
    info
  end
end
