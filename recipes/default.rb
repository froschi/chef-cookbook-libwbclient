packages = Array.new

case node[:lsb][:codename]
when "lucid"
  include_recipe "libtalloc"

  packages |= %w/
    libwbclient0
  /
when "precise"
  packages |= %w/
    libwbclient0
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
