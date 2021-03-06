#
# Cookbook Name:: chef-users
# Recipe:: default
#
# Copyright 2012, Jovelabs
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

actions :manage, :remove, :destroy

attribute :name, :kind_of => String, :name_attribute => true

def initialize(*args)
  super
  @action = :manage

  Chef::Log.debug("=" * 80)
  Chef::Log.debug("users_manage resource initialize")
  Chef::Log.debug("=" * 80)
end
