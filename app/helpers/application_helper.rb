module ApplicationHelper
  include Pagy::Frontend

  def default_meta_tags
    {
      site: '不幸自慢',
      title: '同情するなら金をくれ！！',
      reverse: true,
      charset: 'utf-8',
      description: '過去の不幸を暴露してみんなからお金をもらうアプリ',
      keywords: '不幸, 自慢, 同情, お金, 暴露',
      canonical: request.original_url,
      separator: '|',
      icon: [
        { href: image_url('favicon.png') },
        { href: image_url('favicon.png'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' }
      ],
      og: {
        site_name: :site,
        title: :title,
        description: :description,
        type: 'website',
        url: request.original_url,
        image: image_url('ogp.png'),
        locale: 'ja_JP'
      },
      twitter: {
        card: 'summary_large_image',
        site: '@wataru_pgm'
      }
    }
  end
end
