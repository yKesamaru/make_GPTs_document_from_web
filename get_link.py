from urllib.parse import urljoin, urlparse

import requests
from bs4 import BeautifulSoup


def fetch_document_links(url, selector):
    """
    指定されたURLとCSSセレクターを使用して、ドキュメントのリンクを取得する関数

    Args:
        url (str): ドキュメントの完全なURL
        selector (str): CSSセレクター

    Returns:
        None
    """
    # URLを解析して、ベースURLとドキュメントのパスを取得
    parsed_url = urlparse(url)
    base_url = f"{parsed_url.scheme}://{parsed_url.netloc}"
    doc_path = parsed_url.path

    # ページの内容を取得
    response = requests.get(url)
    html = response.text

    # BeautifulSoupを使用してHTMLを解析
    soup = BeautifulSoup(html, 'html.parser')

    # 指定されたCSSセレクターを使用して要素を見つける
    elements = soup.select(selector)

    # 各要素の処理
    for elem in elements:
        links = elem.find_all('a')
        for link in links:
            # 相対リンクを絶対リンクに変換
            absolute_url = urljoin(base_url, link.get('href'))
            print(absolute_url)

def main():
    """
    url、selectorを指定して下さい。
    """
    # ドキュメントのURLとCSSセレクターを指定
    url = 'https://pillow.readthedocs.io/en/stable/index.html'
    selector = '#overview > div > ul'

    # ドキュメントのリンクを取得する関数を呼び出す
    fetch_document_links(url, selector)

# プログラムの実行
if __name__ == "__main__":
    main()
