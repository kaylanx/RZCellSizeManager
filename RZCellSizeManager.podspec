Pod::Spec.new do |s|
  s.name         = "RZCellSizeManager"
  s.version      = "1.1.1"
  s.summary      = "Dynamic size computation and caching for cells."

  s.description  = <<-DESC
                   RZCellSizeManager is an object used to cache and get cell heights for UICollectionView cells and UITableView cells. 
                   It works especially well when using AutoLayout but can be used anytime you want to cache cell sizes.
                   DESC

  s.homepage     = "https://github.com/Raizlabs/RZCellSizeManager"
  s.license      = { :type => 'MIT'}
  s.author       = { "Alex Rouse" => "alex.rouse@raizlabs.com" }
  s.platform     = :ios, '7.0'
  s.source       = { :git => "https://github.com/Raizlabs/RZCellSizeManager.git", :tag => "1.1.1" }
  s.requires_arc = true
  
  s.subspec 'Core' do |ss|
    ss.source_files = 'RZCellSizeManager/*.{h,m}'
  end
  
  s.subspec 'CoreDataExtensions' do |ss|
    ss.dependency 'RZCellSizeManager/Core'
    ss.source_files = 'RZCellSizeManagerExtensions/*+CoreData.{h,m}'
    ss.frameworks = 'CoreData'
  end
  
  s.subspec 'RZCollectionListExtensions' do |ss|
    ss.dependency 'RZCellSizeManager/Core'
    ss.dependency 'RZCollectionList', '~> 0.6'
    ss.source_files = 'RZCellSizeManagerExtensions/*+RZCollectionList.{h,m}'
  end
  
  s.default_subspec = 'Core'
  
end
