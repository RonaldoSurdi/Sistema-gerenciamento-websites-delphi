{*************************************************************}
{            HTML Compressor Component for Delphi 32          }
{ Version:   1.0                                              }
{ Author:    Aleksey Kuznetsov, Kiev, Ukraine                 }
{            Алексей Кузнецов (Xacker), Киев, Украина         }
{ E-Mail:    xacker@phreaker.net                              }
{ Home Page: xacker.virtualave.net                            }
{ Created:   March, 21, 1999                                  }
{ Modified:  April, 1, 1999                                   }
{ Legal:     Copyright (c) 1999 by Aleksey Xacker             }
{ !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! }
{ If you will use to a component in your programs, hold me in }
{ "credits" !                                                 }
{ !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! }
{ Если вы будете использовать компоненту в своей программе,   }
{ держите меня в "кредитах" !                                 }
{ !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! }
{*************************************************************}
{   HTML Compressor (English)                                 }
{ This component is indended for compressing of HTML files,   }
{ resulting in shorter downloading time. Your pages will      }
{ appear in exactly the same way in your browser, but they    }
{ will be about 20% smaller. Сompressor removes all           }
{ information used for editing in the HTML file. This         }
{ information is unneeded for viewing the HTML file but is    }
{ simply used to make its editing a lot easier.               }
{   Options:                                                  }
{    * Replace simple tags (<strong> to <b> and <em> to <i>,  }
{        etc.)                                                }
{    * Put tag <center> instead of <p align=...>              }
{    * Remove superflious inverted commas in tags             }
{    * Remove superflious spaces                              }
{    * Remove superflious returns (0D, 0A)                    }
{    * Remove all returns (0D, 0A)                            }
{    * Remove Front Page's <!-- webbot span...> tags          }
{*************************************************************}
{  HTML Compressor (Russian)                                  }
{ Компонента предназначенна для сжатия HTML файлов, тем самым }
{ сокращая время зарузки страниц в сети. Сжатые web страницы  }
{ будут выглядеть и работать точно также как и до сжатия, но  }
{ будут занимать пространства, приблизительно, на 20% меньше. }
{ Compressor удаляет из HTML файла всю информацию для         }
{ редактирования. Удалённая информация излишня для просмотра  }
{ станицы, но обычно намного облегчает её редактирование.     }
{*************************************************************}
{  Properties                                                 }
{    (!!!) see description of options (!!!)                   }
{    Buffer: Pointer - HTML file (read only)                  }
{    IsCompressed: Boolean - Is HTML file compressed          }
{    SourceSize,                                              }
{    TargetSize: LongInt                                      }
{  Methods:                                                   }
{    function LoadFromFile: Boolean - (Return False if error) }
{    function SaveToFile: Boolean - (Return False if error)   }
{    procedure Compress - (Compress Buffer)                   }
{*************************************************************}
{                     IMPORTANT NOTE:                         }
{ This software is provided 'as-is', without any express or   }
{ implied warranty. In no event will the author be held       }
{ liable for any damages arising from the use of this         }
{ software.                                                   }
{ Permission is granted to anyone to use this software for    }
{ any purpose, including commercial applications, and to      }
{ alter it and redistribute it freely, subject to the         }
{ following restrictions:                                     }
{ 1. The origin of this software must not be misrepresented,  }
{    you must not claim that you wrote the original software. }
{    If you use this software in a product, an acknowledgment }
{    in the product documentation would be appreciated but is }
{    not required.                                            }
{ 2. Altered source versions must be plainly marked as such,  }
{    and must not be misrepresented as being the original     }
{    software.                                                }
{ 3. This notice may not be removed or altered from any       }
{    source distribution.                                     }
{*************************************************************}
