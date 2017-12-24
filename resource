import requests


def get_web_page(url):
    resp = requests.get(
        url=url,
        cookies={'over18': '1'}
    )
    if resp.status_code != 200:
        print('Invalid url:', resp.url)
        return None
    else:
        return resp.text


if __name__ == '__main__':
    page = get_web_page('http://www02.eyny.com/home.php?mod=space&uid=3750445&do=thread&view=me&from=space')
    if page:
        print(page)
