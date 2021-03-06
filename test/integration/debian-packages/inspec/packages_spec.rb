#
# Copyright 2016, Gridtec
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

describe package('git') do
  it { should be_installed }
end

describe package('curl') do
  it { should be_installed }
end

describe package('openssl') do
  it { should be_installed }
end

describe package('python') do
  it { should be_installed }
end

describe package('python-beaker') do
  it { should be_installed }
end

describe package('python-bs4') do
  it { should be_installed }
end

describe package('python-crypto') do
  it { should be_installed }
end

describe package('python-django') do
  it { should be_installed }
end

describe package('python-feedparser') do
  it { should be_installed }
end

describe package('python-flup') do
  it { should be_installed }
end

describe package('python-html5lib') do
  it { should be_installed }
end

describe package('python-imaging') do
  it { should be_installed }
end

describe package('python-jinja2') do
  it { should be_installed }
end

describe package('python-pycurl') do
  it { should be_installed }
end

describe package('python-openssl') do
  it { should be_installed }
end

describe package('python-qt4') do
  it { should be_installed }
end

describe package('python-simplejson') do
  it { should be_installed }
end

describe package('rhino') do
  it { should be_installed }
end

describe package('tesseract-ocr') do
  it { should be_installed }
end

describe package('tesseract-ocr-eng') do
  it { should be_installed }
end

describe package('gocr') do
  it { should be_installed }
end

if (os[:name].eql?('debian') && os[:release].to_f < 8) || (os[:name].eql?('ubuntu') && os[:release].to_f < 14.04)
  describe package('libmozjs185-1.0') do
    it { should be_installed }
  end
else
  describe package('python-thrift') do
    it { should be_installed }
  end

  describe package('libmozjs-24-bin') do
    it { should be_installed }
  end
end
